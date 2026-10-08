.class final Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo$Builder;
.super Lcom/google/android/datatransport/cct/internal/ClientInfo$Builder;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

.field public b:Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;


# virtual methods
.method public final a()Lcom/google/android/datatransport/cct/internal/ClientInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo$Builder;->a:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo$Builder;->b:Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo;-><init>(Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final b(Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;)Lcom/google/android/datatransport/cct/internal/ClientInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo$Builder;->b:Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()Lcom/google/android/datatransport/cct/internal/ClientInfo$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;->j:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_ClientInfo$Builder;->a:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    .line 4
    .line 5
    return-object p0
.end method
