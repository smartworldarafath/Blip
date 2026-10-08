.class final Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;
.super Lcom/google/firebase/installations/remote/InstallationResponse;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/firebase/installations/remote/TokenResult;

.field public final e:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/installations/remote/TokenResult;Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->d:Lcom/google/firebase/installations/remote/TokenResult;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->e:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/firebase/installations/remote/TokenResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->d:Lcom/google/firebase/installations/remote/TokenResult;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->e:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    .line 2
    .line 3
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/installations/remote/InstallationResponse;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_6

    .line 9
    .line 10
    check-cast p1, Lcom/google/firebase/installations/remote/InstallationResponse;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->a:Ljava/lang/String;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    move-object v1, p1

    .line 17
    check-cast v1, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->a:Ljava/lang/String;

    .line 20
    .line 21
    if-nez v1, :cond_6

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object v3, p1

    .line 25
    check-cast v3, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;

    .line 26
    .line 27
    iget-object v3, v3, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_6

    .line 34
    .line 35
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->b:Ljava/lang/String;

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    move-object v1, p1

    .line 40
    check-cast v1, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->b:Ljava/lang/String;

    .line 43
    .line 44
    if-nez v1, :cond_6

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move-object v3, p1

    .line 48
    check-cast v3, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;

    .line 49
    .line 50
    iget-object v3, v3, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->b:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_6

    .line 57
    .line 58
    :goto_1
    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->c:Ljava/lang/String;

    .line 59
    .line 60
    if-nez v1, :cond_3

    .line 61
    .line 62
    move-object v1, p1

    .line 63
    check-cast v1, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;

    .line 64
    .line 65
    iget-object v1, v1, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->c:Ljava/lang/String;

    .line 66
    .line 67
    if-nez v1, :cond_6

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    move-object v3, p1

    .line 71
    check-cast v3, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;

    .line 72
    .line 73
    iget-object v3, v3, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->c:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_6

    .line 80
    .line 81
    :goto_2
    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->d:Lcom/google/firebase/installations/remote/TokenResult;

    .line 82
    .line 83
    if-nez v1, :cond_4

    .line 84
    .line 85
    move-object v1, p1

    .line 86
    check-cast v1, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;

    .line 87
    .line 88
    iget-object v1, v1, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->d:Lcom/google/firebase/installations/remote/TokenResult;

    .line 89
    .line 90
    if-nez v1, :cond_6

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_4
    move-object v3, p1

    .line 94
    check-cast v3, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;

    .line 95
    .line 96
    iget-object v3, v3, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->d:Lcom/google/firebase/installations/remote/TokenResult;

    .line 97
    .line 98
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_6

    .line 103
    .line 104
    :goto_3
    iget-object p0, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->e:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    .line 105
    .line 106
    if-nez p0, :cond_5

    .line 107
    .line 108
    check-cast p1, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;

    .line 109
    .line 110
    iget-object p0, p1, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->e:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    .line 111
    .line 112
    if-nez p0, :cond_6

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_5
    check-cast p1, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;

    .line 116
    .line 117
    iget-object p1, p1, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->e:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    .line 118
    .line 119
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-eqz p0, :cond_6

    .line 124
    .line 125
    :goto_4
    return v0

    .line 126
    :cond_6
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->a:Ljava/lang/String;

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
    iget-object v3, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->b:Ljava/lang/String;

    .line 18
    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    move v3, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    :goto_1
    xor-int/2addr v1, v3

    .line 28
    mul-int/2addr v1, v2

    .line 29
    iget-object v3, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->c:Ljava/lang/String;

    .line 30
    .line 31
    if-nez v3, :cond_2

    .line 32
    .line 33
    move v3, v0

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    :goto_2
    xor-int/2addr v1, v3

    .line 40
    mul-int/2addr v1, v2

    .line 41
    iget-object v3, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->d:Lcom/google/firebase/installations/remote/TokenResult;

    .line 42
    .line 43
    if-nez v3, :cond_3

    .line 44
    .line 45
    move v3, v0

    .line 46
    goto :goto_3

    .line 47
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    :goto_3
    xor-int/2addr v1, v3

    .line 52
    mul-int/2addr v1, v2

    .line 53
    iget-object p0, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->e:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    .line 54
    .line 55
    if-nez p0, :cond_4

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    :goto_4
    xor-int p0, v1, v0

    .line 63
    .line 64
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "InstallationResponse{uri="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", fid="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", refreshToken="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->c:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", authToken="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->d:Lcom/google/firebase/installations/remote/TokenResult;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", responseCode="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->e:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, "}"

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method
