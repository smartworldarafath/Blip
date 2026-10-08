.class public final Lnet/blip/libblip/SentryConfig;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lr1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lr1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/libblip/SentryConfig;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/libblip/SentryConfig;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/blip/libblip/SentryConfig;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/blip/libblip/SentryConfig;->d:Lr1;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne p0, p1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    instance-of v2, p1, Lnet/blip/libblip/SentryConfig;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    check-cast p1, Lnet/blip/libblip/SentryConfig;

    .line 21
    .line 22
    iget-object v2, p0, Lnet/blip/libblip/SentryConfig;->a:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v4, p1, Lnet/blip/libblip/SentryConfig;->a:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget-object v2, p0, Lnet/blip/libblip/SentryConfig;->b:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v4, p1, Lnet/blip/libblip/SentryConfig;->b:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    iget-object v2, p0, Lnet/blip/libblip/SentryConfig;->c:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v4, p1, Lnet/blip/libblip/SentryConfig;->c:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_4

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    invoke-virtual {v0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_5

    .line 60
    .line 61
    :goto_0
    return v3

    .line 62
    :cond_5
    iget-object p0, p0, Lnet/blip/libblip/SentryConfig;->d:Lr1;

    .line 63
    .line 64
    iget-object p1, p1, Lnet/blip/libblip/SentryConfig;->d:Lr1;

    .line 65
    .line 66
    if-eq p0, p1, :cond_6

    .line 67
    .line 68
    return v3

    .line 69
    :cond_6
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/blip/libblip/SentryConfig;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lnet/blip/libblip/SentryConfig;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Ljb;->c(Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lnet/blip/libblip/SentryConfig;->c:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Ljb;->c(Ljava/lang/String;II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const-wide v1, 0x3fb999999999999aL    # 0.1

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v1, v0

    .line 36
    mul-int/lit16 v1, v1, 0x3c1

    .line 37
    .line 38
    iget-object p0, p0, Lnet/blip/libblip/SentryConfig;->d:Lr1;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    add-int/2addr p0, v1

    .line 45
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, ", environment="

    .line 11
    .line 12
    const-string v2, ", release="

    .line 13
    .line 14
    const-string v3, "SentryConfig(dsn="

    .line 15
    .line 16
    iget-object v4, p0, Lnet/blip/libblip/SentryConfig;->a:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v5, p0, Lnet/blip/libblip/SentryConfig;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v3, v4, v1, v5, v2}, Lq;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lnet/blip/libblip/SentryConfig;->c:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, ", sampleRate="

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, ", tracesSampleRate=null, userEmail="

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lnet/blip/libblip/SentryConfig;->d:Lr1;

    .line 43
    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, ")"

    .line 48
    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method
