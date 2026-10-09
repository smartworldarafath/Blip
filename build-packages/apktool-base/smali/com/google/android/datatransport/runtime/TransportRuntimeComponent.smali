.class abstract Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    check-cast p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->o:Ljavax/inject/Provider;

    .line 4
    .line 5
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
