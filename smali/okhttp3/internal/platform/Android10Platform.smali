.class public final Lokhttp3/internal/platform/Android10Platform;
.super Lokhttp3/internal/platform/Platform;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final d:Z


# instance fields
.field public final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "java.vm.name"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Dalvik"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v1, 0x1d

    .line 18
    .line 19
    if-lt v0, v1, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    sput-boolean v0, Lokhttp3/internal/platform/Android10Platform;->d:Z

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "java.vm.name"

    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "Dalvik"

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v1, 0x1d

    .line 21
    .line 22
    if-lt v0, v1, :cond_0

    .line 23
    .line 24
    new-instance v0, Lokhttp3/internal/platform/android/Android10SocketAdapter;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    new-instance v1, Lokhttp3/internal/platform/android/DeferredSocketAdapter;

    .line 32
    .line 33
    sget-object v2, Lokhttp3/internal/platform/android/AndroidSocketAdapter;->f:Lokhttp3/internal/platform/android/AndroidSocketAdapter$Companion$factory$1;

    .line 34
    .line 35
    invoke-direct {v1, v2}, Lokhttp3/internal/platform/android/DeferredSocketAdapter;-><init>(Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Lokhttp3/internal/platform/android/DeferredSocketAdapter;

    .line 39
    .line 40
    sget-object v3, Lokhttp3/internal/platform/android/ConscryptSocketAdapter;->a:Lokhttp3/internal/platform/android/ConscryptSocketAdapter$Companion$factory$1;

    .line 41
    .line 42
    invoke-direct {v2, v3}, Lokhttp3/internal/platform/android/DeferredSocketAdapter;-><init>(Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;)V

    .line 43
    .line 44
    .line 45
    new-instance v3, Lokhttp3/internal/platform/android/DeferredSocketAdapter;

    .line 46
    .line 47
    sget-object v4, Lokhttp3/internal/platform/android/BouncyCastleSocketAdapter;->a:Lokhttp3/internal/platform/android/BouncyCastleSocketAdapter$Companion$factory$1;

    .line 48
    .line 49
    invoke-direct {v3, v4}, Lokhttp3/internal/platform/android/DeferredSocketAdapter;-><init>(Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;)V

    .line 50
    .line 51
    .line 52
    const/4 v4, 0x4

    .line 53
    new-array v4, v4, [Lokhttp3/internal/platform/android/SocketAdapter;

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    aput-object v0, v4, v5

    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    aput-object v1, v4, v0

    .line 60
    .line 61
    const/4 v0, 0x2

    .line 62
    aput-object v2, v4, v0

    .line 63
    .line 64
    const/4 v0, 0x3

    .line 65
    aput-object v3, v4, v0

    .line 66
    .line 67
    invoke-static {v4}, Lkotlin/collections/ArraysKt;->p([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    move-object v3, v2

    .line 91
    check-cast v3, Lokhttp3/internal/platform/android/SocketAdapter;

    .line 92
    .line 93
    invoke-interface {v3}, Lokhttp3/internal/platform/android/SocketAdapter;->b()Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_1

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    iput-object v1, p0, Lokhttp3/internal/platform/Android10Platform;->c:Ljava/util/ArrayList;

    .line 104
    .line 105
    return-void
.end method


# virtual methods
.method public final b(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Landroid/net/http/X509TrustManagerExtensions;

    .line 3
    .line 4
    invoke-direct {v1, p1}, Landroid/net/http/X509TrustManagerExtensions;-><init>(Ljavax/net/ssl/X509TrustManager;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-object v1, v0

    .line 9
    :goto_0
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Lokhttp3/internal/platform/android/AndroidCertificateChainCleaner;

    .line 12
    .line 13
    invoke-direct {v0, p1, v1}, Lokhttp3/internal/platform/android/AndroidCertificateChainCleaner;-><init>(Ljavax/net/ssl/X509TrustManager;Landroid/net/http/X509TrustManagerExtensions;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    new-instance v0, Lokhttp3/internal/tls/BasicCertificateChainCleaner;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lokhttp3/internal/platform/Platform;->c(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/TrustRootIndex;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, p0}, Lokhttp3/internal/tls/BasicCertificateChainCleaner;-><init>(Lokhttp3/internal/tls/TrustRootIndex;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public final d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lokhttp3/internal/platform/Android10Platform;->c:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    move-object v1, v0

    .line 21
    check-cast v1, Lokhttp3/internal/platform/android/SocketAdapter;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lokhttp3/internal/platform/android/SocketAdapter;->a(Ljavax/net/ssl/SSLSocket;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    :goto_0
    check-cast v0, Lokhttp3/internal/platform/android/SocketAdapter;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-interface {v0, p1, p2, p3}, Lokhttp3/internal/platform/android/SocketAdapter;->d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public final f(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p0, p0, Lokhttp3/internal/platform/Android10Platform;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    move-object v2, v0

    .line 19
    check-cast v2, Lokhttp3/internal/platform/android/SocketAdapter;

    .line 20
    .line 21
    invoke-interface {v2, p1}, Lokhttp3/internal/platform/android/SocketAdapter;->a(Ljavax/net/ssl/SSLSocket;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object v0, v1

    .line 29
    :goto_0
    check-cast v0, Lokhttp3/internal/platform/android/SocketAdapter;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-interface {v0, p1}, Lokhttp3/internal/platform/android/SocketAdapter;->c(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_2
    return-object v1
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0, p1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method
