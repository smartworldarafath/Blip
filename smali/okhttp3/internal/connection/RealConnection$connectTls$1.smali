.class final Lokhttp3/internal/connection/RealConnection$connectTls$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Ljava/security/cert/Certificate;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic k:Lokhttp3/CertificatePinner;

.field public final synthetic l:Lokhttp3/Handshake;

.field public final synthetic m:Lokhttp3/Address;


# direct methods
.method public constructor <init>(Lokhttp3/CertificatePinner;Lokhttp3/Handshake;Lokhttp3/Address;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection$connectTls$1;->k:Lokhttp3/CertificatePinner;

    .line 2
    .line 3
    iput-object p2, p0, Lokhttp3/internal/connection/RealConnection$connectTls$1;->l:Lokhttp3/Handshake;

    .line 4
    .line 5
    iput-object p3, p0, Lokhttp3/internal/connection/RealConnection$connectTls$1;->m:Lokhttp3/Address;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection$connectTls$1;->k:Lokhttp3/CertificatePinner;

    .line 2
    .line 3
    iget-object v0, v0, Lokhttp3/CertificatePinner;->b:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection$connectTls$1;->l:Lokhttp3/Handshake;

    .line 9
    .line 10
    invoke-virtual {v1}, Lokhttp3/Handshake;->a()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object p0, p0, Lokhttp3/internal/connection/RealConnection$connectTls$1;->m:Lokhttp3/Address;

    .line 15
    .line 16
    iget-object p0, p0, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 17
    .line 18
    iget-object p0, p0, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, p0, v1}, Lokhttp3/internal/tls/CertificateChainCleaner;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method
