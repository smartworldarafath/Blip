.class public abstract Lcom/google/android/datatransport/runtime/TransportContext;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/TransportContext$Builder;
    }
.end annotation


# direct methods
.method public static a()Lcom/google/android/datatransport/runtime/TransportContext$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/google/android/datatransport/Priority;->j:Lcom/google/android/datatransport/Priority;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext$Builder;->c:Lcom/google/android/datatransport/Priority;

    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()[B
.end method

.method public abstract d()Lcom/google/android/datatransport/Priority;
.end method

.method public final e()Z
    .locals 0

    .line 1
    check-cast p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->b:[B

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final f(Lcom/google/android/datatransport/Priority;)Lcom/google/android/datatransport/runtime/TransportContext;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportContext;->a()Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->b(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->d(Lcom/google/android/datatransport/Priority;)Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    .line 13
    .line 14
    .line 15
    check-cast v0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext$Builder;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->b:[B

    .line 18
    .line 19
    iput-object p0, v0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext$Builder;->b:[B

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext$Builder;->a()Lcom/google/android/datatransport/runtime/TransportContext;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    check-cast p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->b:[B

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x2

    .line 11
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "TransportContext("

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ", "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->c:Lcom/google/android/datatransport/Priority;

    .line 33
    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p0, ")"

    .line 41
    .line 42
    invoke-static {v1, v0, p0}, Lq;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method
