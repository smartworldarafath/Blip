.class public abstract Lcom/google/android/datatransport/runtime/EventInternal$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/EventInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->c()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public abstract b()Lcom/google/android/datatransport/runtime/EventInternal;
.end method

.method public abstract c()Ljava/util/Map;
.end method

.method public abstract d(Ljava/lang/Integer;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;
.end method

.method public abstract e(Lcom/google/android/datatransport/runtime/EncodedPayload;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;
.end method

.method public abstract f(J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;
.end method

.method public abstract g(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;
.end method

.method public abstract h(J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;
.end method
