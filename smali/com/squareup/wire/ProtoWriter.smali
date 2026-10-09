.class public final Lcom/squareup/wire/ProtoWriter;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/ProtoWriter$Companion;
    }
.end annotation


# instance fields
.field public final a:Lokio/BufferedSink;


# direct methods
.method public constructor <init>(Lokio/BufferedSink;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/squareup/wire/ProtoWriter;->a:Lokio/BufferedSink;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Lokio/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/squareup/wire/ProtoWriter;->a:Lokio/BufferedSink;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Lokio/BufferedSink;->M0(Lokio/ByteString;)Lokio/BufferedSink;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 1
    :goto_0
    and-int/lit8 v0, p1, -0x80

    .line 2
    .line 3
    iget-object v1, p0, Lcom/squareup/wire/ProtoWriter;->a:Lokio/BufferedSink;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    and-int/lit8 v0, p1, 0x7f

    .line 8
    .line 9
    or-int/lit16 v0, v0, 0x80

    .line 10
    .line 11
    invoke-interface {v1, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 12
    .line 13
    .line 14
    ushr-int/lit8 p1, p1, 0x7

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v1, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final c(J)V
    .locals 4

    .line 1
    :goto_0
    const-wide/16 v0, -0x80

    .line 2
    .line 3
    and-long/2addr v0, p1

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    iget-object v1, p0, Lcom/squareup/wire/ProtoWriter;->a:Lokio/BufferedSink;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    long-to-int v0, p1

    .line 13
    and-int/lit8 v0, v0, 0x7f

    .line 14
    .line 15
    or-int/lit16 v0, v0, 0x80

    .line 16
    .line 17
    invoke-interface {v1, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x7

    .line 21
    ushr-long/2addr p1, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    long-to-int p0, p1

    .line 24
    invoke-interface {v1, p0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 25
    .line 26
    .line 27
    return-void
.end method
