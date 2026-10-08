.class public abstract Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/LogRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# virtual methods
.method public abstract a()Lcom/google/android/datatransport/cct/internal/LogRequest;
.end method

.method public abstract b(Lcom/google/android/datatransport/cct/internal/ClientInfo;)Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;
.end method

.method public abstract c(Ljava/util/ArrayList;)Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;
.end method

.method public abstract d()Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;
.end method

.method public abstract e(J)Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;
.end method

.method public abstract f(J)Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;
.end method

.method public final g(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogRequest$Builder;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogRequest$Builder;->d:Ljava/lang/Integer;

    .line 8
    .line 9
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    .line 1
    check-cast p0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogRequest$Builder;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogRequest$Builder;->e:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method
