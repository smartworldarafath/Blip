.class public final Lokhttp3/internal/http/RealResponseBody;
.super Lokhttp3/ResponseBody;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final j:J

.field public final k:Lokio/RealBufferedSource;


# direct methods
.method public constructor <init>(JLokio/RealBufferedSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lokhttp3/internal/http/RealResponseBody;->j:J

    .line 5
    .line 6
    iput-object p3, p0, Lokhttp3/internal/http/RealResponseBody;->k:Lokio/RealBufferedSource;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final U0()Lokio/BufferedSource;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http/RealResponseBody;->k:Lokio/RealBufferedSource;

    .line 2
    .line 3
    return-object p0
.end method

.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/internal/http/RealResponseBody;->j:J

    .line 2
    .line 3
    return-wide v0
.end method
