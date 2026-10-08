.class public final Landroidx/media3/extractor/metadata/emsg/EventMessageDecoder;
.super Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# virtual methods
.method public final b(Landroidx/media3/extractor/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Landroidx/media3/common/Metadata;
    .locals 9

    .line 1
    new-instance p0, Landroidx/media3/common/Metadata;

    .line 2
    .line 3
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-direct {p1, p2, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I[B)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->u()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->u()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->t()J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->t()J

    .line 35
    .line 36
    .line 37
    move-result-wide v6

    .line 38
    iget-object p2, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 39
    .line 40
    iget v0, p1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 41
    .line 42
    iget p1, p1, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 43
    .line 44
    invoke-static {p2, v0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    new-instance v1, Landroidx/media3/extractor/metadata/emsg/EventMessage;

    .line 49
    .line 50
    invoke-direct/range {v1 .. v8}, Landroidx/media3/extractor/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    new-array p1, p1, [Landroidx/media3/common/Metadata$Entry;

    .line 55
    .line 56
    const/4 p2, 0x0

    .line 57
    aput-object v1, p1, p2

    .line 58
    .line 59
    invoke-direct {p0, p1}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 60
    .line 61
    .line 62
    return-object p0
.end method
