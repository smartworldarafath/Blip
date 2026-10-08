.class final Lcom/google/android/gms/cloudmessaging/zzu;
.super Lcom/google/android/gms/cloudmessaging/zzs;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cloudmessaging/zzs;->c(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
