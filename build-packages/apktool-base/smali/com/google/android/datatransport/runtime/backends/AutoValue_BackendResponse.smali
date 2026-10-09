.class final Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;
.super Lcom/google/android/datatransport/runtime/backends/BackendResponse;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

.field public final b:J


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->a:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->b:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final c()Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->a:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 2
    .line 3
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    check-cast p1, Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;

    .line 11
    .line 12
    iget-object v0, p1, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->a:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->a:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-wide v0, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->b:J

    .line 23
    .line 24
    iget-wide p0, p1, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->b:J

    .line 25
    .line 26
    cmp-long p0, v0, p0

    .line 27
    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    :goto_0
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->a:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0xf4243

    .line 8
    .line 9
    .line 10
    xor-int/2addr v0, v1

    .line 11
    mul-int/2addr v0, v1

    .line 12
    const/16 v1, 0x20

    .line 13
    .line 14
    iget-wide v2, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->b:J

    .line 15
    .line 16
    ushr-long v4, v2, v1

    .line 17
    .line 18
    xor-long v1, v4, v2

    .line 19
    .line 20
    long-to-int p0, v1

    .line 21
    xor-int/2addr p0, v0

    .line 22
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BackendResponse{status="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->a:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", nextRequestWaitMillis="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendResponse;->b:J

    .line 19
    .line 20
    const-string p0, "}"

    .line 21
    .line 22
    invoke-static {v0, v1, v2, p0}, Lq;->k(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
