.class final Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/ListFieldSchema;


# virtual methods
.method public final a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;
    .locals 1

    .line 1
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    check-cast v0, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;

    .line 11
    .line 12
    iget-boolean v0, v0, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;->j:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const/16 v0, 0xa

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 26
    .line 27
    :goto_0
    check-cast p0, Landroidx/datastore/preferences/protobuf/ProtobufArrayList;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/ProtobufArrayList;->d(I)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p3, p1, p2, p0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-object p0
.end method
