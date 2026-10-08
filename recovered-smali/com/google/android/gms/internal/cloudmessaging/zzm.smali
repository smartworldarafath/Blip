.class public final Lcom/google/android/gms/internal/cloudmessaging/zzm;
.super Lcom/google/android/gms/common/api/GoogleApi;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final j:Lcom/google/android/gms/common/api/Api;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/cloudmessaging/zzh;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/google/android/gms/common/api/Api;

    .line 12
    .line 13
    const-string v3, "CloudMessaging.API"

    .line 14
    .line 15
    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    .line 16
    .line 17
    .line 18
    sput-object v2, Lcom/google/android/gms/internal/cloudmessaging/zzm;->j:Lcom/google/android/gms/common/api/Api;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/cloudmessaging/RegisterRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->b:Z

    .line 8
    .line 9
    sget-object v1, Lcom/google/android/gms/cloudmessaging/zzi;->a:Lcom/google/android/gms/common/Feature;

    .line 10
    .line 11
    filled-new-array {v1}, [Lcom/google/android/gms/common/Feature;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->c:[Lcom/google/android/gms/common/Feature;

    .line 16
    .line 17
    new-instance v1, Lcom/google/android/gms/internal/cloudmessaging/zzl;

    .line 18
    .line 19
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/cloudmessaging/zzl;-><init>(Lcom/google/android/gms/internal/cloudmessaging/zzm;Lcom/google/android/gms/cloudmessaging/RegisterRequest;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->a:Lcom/google/android/gms/common/api/internal/RemoteCall;

    .line 23
    .line 24
    const p1, 0x9859

    .line 25
    .line 26
    .line 27
    iput p1, v0, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->d:I

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->a()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->b(ILcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method
