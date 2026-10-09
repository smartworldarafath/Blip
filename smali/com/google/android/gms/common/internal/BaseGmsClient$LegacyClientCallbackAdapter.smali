.class public Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LegacyClientCallbackAdapter"
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .line 1
    iget v0, p1, Lcom/google/android/gms/common/ConnectionResult;->k:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    move-object p1, p0

    .line 13
    check-cast p1, Lcom/google/android/gms/common/internal/GmsClient;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/google/android/gms/common/internal/GmsClient;->y:Ljava/util/Set;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->h(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->o:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    .line 23
    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    check-cast p0, Lcom/google/android/gms/common/internal/zal;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zal;->a:Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;->g(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    return-void
.end method
