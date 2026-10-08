.class public abstract Lcom/google/android/datatransport/runtime/EventInternal;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/EventInternal$Builder;
    }
.end annotation


# direct methods
.method public static a()Lcom/google/android/datatransport/runtime/EventInternal$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->f:Ljava/util/HashMap;

    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->f:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/String;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const-string p0, ""

    .line 14
    .line 15
    :cond_0
    return-object p0
.end method

.method public abstract c()Ljava/lang/Integer;
.end method

.method public abstract d()Lcom/google/android/datatransport/runtime/EncodedPayload;
.end method

.method public abstract e()J
.end method

.method public final f(Ljava/lang/String;)I
    .locals 0

    .line 1
    check-cast p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->f:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/String;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final g()J
    .locals 2

    .line 1
    check-cast p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->f:Ljava/util/Map;

    .line 4
    .line 5
    const-string v0, "tz-offset"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/String;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    return-wide v0

    .line 18
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    return-wide v0
.end method

.method public final h()Ljava/util/Map;
    .locals 0

    .line 1
    check-cast p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->f:Ljava/util/Map;

    .line 4
    .line 5
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public abstract j()J
.end method

.method public final k()Lcom/google/android/datatransport/runtime/EventInternal$Builder;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    check-cast p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->g(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->b:Ljava/lang/Integer;

    .line 14
    .line 15
    iput-object v1, v0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->b:Ljava/lang/Integer;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->c:Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->e(Lcom/google/android/datatransport/runtime/EncodedPayload;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 20
    .line 21
    .line 22
    iget-wide v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->d:J

    .line 23
    .line 24
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, v0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->d:Ljava/lang/Long;

    .line 29
    .line 30
    iget-wide v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->e:J

    .line 31
    .line 32
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->e:Ljava/lang/Long;

    .line 37
    .line 38
    new-instance v1, Ljava/util/HashMap;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->f:Ljava/util/Map;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, v0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->f:Ljava/util/HashMap;

    .line 46
    .line 47
    return-object v0
.end method
