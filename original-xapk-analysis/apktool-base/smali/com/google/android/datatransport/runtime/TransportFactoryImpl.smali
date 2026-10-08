.class final Lcom/google/android/datatransport/runtime/TransportFactoryImpl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/datatransport/TransportFactory;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Lcom/google/android/datatransport/runtime/TransportContext;

.field public final c:Lcom/google/android/datatransport/runtime/TransportRuntime;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/TransportRuntime;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/TransportFactoryImpl;->a:Ljava/util/Set;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/TransportFactoryImpl;->b:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/TransportFactoryImpl;->c:Lcom/google/android/datatransport/runtime/TransportRuntime;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/datatransport/Encoding;Lf7;)Lcom/google/android/datatransport/Transport;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/TransportFactoryImpl;->a:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/google/android/datatransport/runtime/TransportImpl;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/TransportFactoryImpl;->b:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/TransportFactoryImpl;->c:Lcom/google/android/datatransport/runtime/TransportRuntime;

    .line 14
    .line 15
    invoke-direct {v0, v1, p1, p2, p0}, Lcom/google/android/datatransport/runtime/TransportImpl;-><init>(Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/Encoding;Lf7;Lcom/google/android/datatransport/runtime/TransportRuntime;)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string p2, "%s is not supported byt this factory. Supported encodings are: %s."

    .line 22
    .line 23
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method
