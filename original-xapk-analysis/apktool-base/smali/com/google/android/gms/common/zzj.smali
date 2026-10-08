.class abstract Lcom/google/android/gms/common/zzj;
.super Lcom/google/android/gms/common/internal/zzw;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final d:I


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 1
    const-string v0, "com.google.android.gms.common.internal.ICertData"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/zzb;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/16 v1, 0x19

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lcom/google/android/gms/common/zzj;->d:I

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {}, Lfe;->h()V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    throw p0
.end method

.method public static g(Ljava/lang/String;)[B
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "ISO-8859-1"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/AssertionError;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/dynamic/ObjectWrapper;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/zzj;->e()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lcom/google/android/gms/dynamic/ObjectWrapper;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public abstract e()[B
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/common/internal/zzx;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    check-cast p1, Lcom/google/android/gms/common/internal/zzx;

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    check-cast v0, Lcom/google/android/gms/common/zzj;

    .line 11
    .line 12
    iget v0, v0, Lcom/google/android/gms/common/zzj;->d:I

    .line 13
    .line 14
    iget v2, p0, Lcom/google/android/gms/common/zzj;->d:I

    .line 15
    .line 16
    if-eq v0, v2, :cond_1

    .line 17
    .line 18
    :goto_0
    return v1

    .line 19
    :cond_1
    check-cast p1, Lcom/google/android/gms/common/zzj;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/common/zzj;->b()Lcom/google/android/gms/dynamic/ObjectWrapper;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p1, p1, Lcom/google/android/gms/dynamic/ObjectWrapper;->d:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, [B

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/common/zzj;->e()[B

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 34
    .line 35
    .line 36
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return p0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    const-string p1, "GoogleCertificates"

    .line 40
    .line 41
    const-string v0, "Failed to get Google certificates from remote"

    .line 42
    .line 43
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    return v1
.end method

.method public final f()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/common/zzj;->d:I

    .line 2
    .line 3
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/common/zzj;->d:I

    .line 2
    .line 3
    return p0
.end method
