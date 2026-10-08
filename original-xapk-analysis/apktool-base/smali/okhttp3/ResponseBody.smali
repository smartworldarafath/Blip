.class public abstract Lokhttp3/ResponseBody;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract U0()Lokio/BufferedSource;
.end method

.method public abstract a()J
.end method

.method public final close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->U0()Lokio/BufferedSource;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lokhttp3/internal/Util;->b(Ljava/io/Closeable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
