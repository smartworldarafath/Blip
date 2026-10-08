.class final Lcom/google/firebase/installations/remote/AutoValue_TokenResult;
.super Lcom/google/firebase/installations/remote/TokenResult;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/installations/remote/AutoValue_TokenResult$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/google/firebase/installations/remote/TokenResult$ResponseCode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->b:J

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->c:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->c:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/installations/remote/TokenResult;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    check-cast p1, Lcom/google/firebase/installations/remote/TokenResult;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->a:Ljava/lang/String;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    move-object v1, p1

    .line 17
    check-cast v1, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->a:Ljava/lang/String;

    .line 20
    .line 21
    if-nez v1, :cond_3

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object v3, p1

    .line 25
    check-cast v3, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;

    .line 26
    .line 27
    iget-object v3, v3, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    :goto_0
    check-cast p1, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;

    .line 36
    .line 37
    iget-wide v3, p1, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->b:J

    .line 38
    .line 39
    iget-wide v5, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->b:J

    .line 40
    .line 41
    cmp-long v1, v5, v3

    .line 42
    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    iget-object p1, p1, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->c:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->c:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    .line 48
    .line 49
    if-nez p0, :cond_2

    .line 50
    .line 51
    if-nez p1, :cond_3

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-eqz p0, :cond_3

    .line 59
    .line 60
    :goto_1
    return v0

    .line 61
    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->a:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    move v1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    :goto_0
    const v2, 0xf4243

    .line 13
    .line 14
    .line 15
    xor-int/2addr v1, v2

    .line 16
    mul-int/2addr v1, v2

    .line 17
    const/16 v3, 0x20

    .line 18
    .line 19
    iget-wide v4, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->b:J

    .line 20
    .line 21
    ushr-long v6, v4, v3

    .line 22
    .line 23
    xor-long v3, v6, v4

    .line 24
    .line 25
    long-to-int v3, v3

    .line 26
    xor-int/2addr v1, v3

    .line 27
    mul-int/2addr v1, v2

    .line 28
    iget-object p0, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->c:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    .line 29
    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    :goto_1
    xor-int p0, v1, v0

    .line 38
    .line 39
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TokenResult{token="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", tokenExpirationTimestamp="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->b:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", responseCode="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->c:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, "}"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
