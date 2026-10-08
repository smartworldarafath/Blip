.class abstract Landroidx/datastore/preferences/protobuf/ByteString$AbstractByteIterator;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractByteIterator"
.end annotation


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p0, Landroidx/datastore/preferences/protobuf/ByteString$1;

    .line 2
    .line 3
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ByteString$1;->j:I

    .line 4
    .line 5
    iget v1, p0, Landroidx/datastore/preferences/protobuf/ByteString$1;->k:I

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    add-int/lit8 v1, v0, 0x1

    .line 10
    .line 11
    iput v1, p0, Landroidx/datastore/preferences/protobuf/ByteString$1;->j:I

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/ByteString$1;->l:Landroidx/datastore/preferences/protobuf/ByteString;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/ByteString;->f(I)B

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Lk8;->o()V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    :goto_0
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final remove()V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method
