.class public final Lokio/Buffer$UnsafeCursor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsafeCursor"
.end annotation


# instance fields
.field public j:Lokio/Buffer;

.field public k:[B

.field public l:I


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->j:Lokio/Buffer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->j:Lokio/Buffer;

    .line 7
    .line 8
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->k:[B

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->l:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string p0, "not attached to a buffer"

    .line 15
    .line 16
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
