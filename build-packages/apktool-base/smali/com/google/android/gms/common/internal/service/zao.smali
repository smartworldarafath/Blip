.class final Lcom/google/android/gms/common/internal/service/zao;
.super Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# virtual methods
.method public final b(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/internal/zabk;Lcom/google/android/gms/common/api/internal/zabk;)Lcom/google/android/gms/common/api/Api$Client;
    .locals 7

    .line 1
    check-cast p4, Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    .line 2
    .line 3
    new-instance v0, Lcom/google/android/gms/common/internal/service/zab;

    .line 4
    .line 5
    const/16 v3, 0x1c1

    .line 6
    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move-object v4, p3

    .line 10
    move-object v5, p5

    .line 11
    move-object v6, p6

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
