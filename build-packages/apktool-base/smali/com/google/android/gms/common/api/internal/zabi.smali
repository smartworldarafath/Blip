.class final Lcom/google/android/gms/common/api/internal/zabi;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Lcom/google/android/gms/common/api/internal/zabj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabi;->j:Lcom/google/android/gms/common/api/internal/zabj;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabi;->j:Lcom/google/android/gms/common/api/internal/zabj;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabj;->a:Lcom/google/android/gms/common/api/internal/zabk;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->e:Lcom/google/android/gms/common/api/Api$Client;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabk;->e:Lcom/google/android/gms/common/api/Api$Client;

    .line 16
    .line 17
    const-string v1, " disconnecting because it was signed out."

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast p0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->e(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
