.class final Lcom/google/android/datatransport/runtime/AutoValue_TransportContext$Builder;
.super Lcom/google/android/datatransport/runtime/TransportContext$Builder;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:[B

.field public c:Lcom/google/android/datatransport/Priority;


# virtual methods
.method public final a()Lcom/google/android/datatransport/runtime/TransportContext;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext$Builder;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, " backendName"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, ""

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext$Builder;->c:Lcom/google/android/datatransport/Priority;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const-string v1, " priority"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    new-instance v0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext$Builder;->a:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext$Builder;->b:[B

    .line 31
    .line 32
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext$Builder;->c:Lcom/google/android/datatransport/Priority;

    .line 33
    .line 34
    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;-><init>(Ljava/lang/String;[BLcom/google/android/datatransport/Priority;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_2
    const-string p0, "Missing required properties:"

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/TransportContext$Builder;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext$Builder;->a:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "Null backendName"

    .line 7
    .line 8
    invoke-static {p0}, Lio/sentry/d;->f(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method public final c([B)Lcom/google/android/datatransport/runtime/TransportContext$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext$Builder;->b:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final d(Lcom/google/android/datatransport/Priority;)Lcom/google/android/datatransport/runtime/TransportContext$Builder;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext$Builder;->c:Lcom/google/android/datatransport/Priority;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "Null priority"

    .line 7
    .line 8
    invoke-static {p0}, Lio/sentry/d;->f(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method
