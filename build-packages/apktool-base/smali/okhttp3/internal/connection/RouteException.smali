.class public final Lokhttp3/internal/connection/RouteException;
.super Ljava/lang/RuntimeException;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final j:Ljava/io/IOException;

.field public k:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/connection/RouteException;->j:Ljava/io/IOException;

    .line 5
    .line 6
    iput-object p1, p0, Lokhttp3/internal/connection/RouteException;->k:Ljava/io/IOException;

    .line 7
    .line 8
    return-void
.end method
