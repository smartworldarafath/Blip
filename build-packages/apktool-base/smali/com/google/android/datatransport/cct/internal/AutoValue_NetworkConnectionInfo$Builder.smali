.class final Lcom/google/android/datatransport/cct/internal/AutoValue_NetworkConnectionInfo$Builder;
.super Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$Builder;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/AutoValue_NetworkConnectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

.field public b:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;


# virtual methods
.method public final a()Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/internal/AutoValue_NetworkConnectionInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_NetworkConnectionInfo$Builder;->a:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_NetworkConnectionInfo$Builder;->b:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lcom/google/android/datatransport/cct/internal/AutoValue_NetworkConnectionInfo;-><init>(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final b(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;)Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_NetworkConnectionInfo$Builder;->b:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;)Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_NetworkConnectionInfo$Builder;->a:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 2
    .line 3
    return-object p0
.end method
