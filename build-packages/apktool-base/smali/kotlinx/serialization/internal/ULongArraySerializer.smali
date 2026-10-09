.class public final Lkotlinx/serialization/internal/ULongArraySerializer;
.super Lkotlinx/serialization/internal/PrimitiveArraySerializer;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/serialization/internal/PrimitiveArraySerializer<",
        "Lkotlin/ULong;",
        "Lkotlin/ULongArray;",
        "Lkotlinx/serialization/internal/ULongArrayBuilder;",
        ">;",
        "Lkotlinx/serialization/KSerializer<",
        "Lkotlin/ULongArray;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lkotlinx/serialization/internal/ULongArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/serialization/internal/ULongArraySerializer;

    .line 2
    .line 3
    sget-object v1, Lkotlinx/serialization/internal/ULongSerializer;->a:Lkotlinx/serialization/internal/ULongSerializer;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lkotlinx/serialization/internal/ULongArraySerializer;->c:Lkotlinx/serialization/internal/ULongArraySerializer;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lkotlin/ULongArray;

    .line 2
    .line 3
    iget-object p0, p1, Lkotlin/ULongArray;->j:[J

    .line 4
    .line 5
    array-length p0, p0

    .line 6
    return p0
.end method

.method public final i(Lkotlinx/serialization/encoding/CompositeDecoder;ILjava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p3, Lkotlinx/serialization/internal/ULongArrayBuilder;

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->b:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    .line 7
    .line 8
    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/CompositeDecoder;->v(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)Lkotlinx/serialization/encoding/Decoder;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Lkotlinx/serialization/encoding/Decoder;->q()J

    .line 13
    .line 14
    .line 15
    move-result-wide p0

    .line 16
    invoke-static {p3}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;->c(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p3, Lkotlinx/serialization/internal/ULongArrayBuilder;->a:[J

    .line 20
    .line 21
    iget v0, p3, Lkotlinx/serialization/internal/ULongArrayBuilder;->b:I

    .line 22
    .line 23
    add-int/lit8 v1, v0, 0x1

    .line 24
    .line 25
    iput v1, p3, Lkotlinx/serialization/internal/ULongArrayBuilder;->b:I

    .line 26
    .line 27
    aput-wide p0, p2, v0

    .line 28
    .line 29
    return-void
.end method

.method public final j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/ULongArray;

    .line 2
    .line 3
    iget-object p0, p1, Lkotlin/ULongArray;->j:[J

    .line 4
    .line 5
    new-instance p1, Lkotlinx/serialization/internal/ULongArrayBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p0, p1, Lkotlinx/serialization/internal/ULongArrayBuilder;->a:[J

    .line 11
    .line 12
    array-length p0, p0

    .line 13
    iput p0, p1, Lkotlinx/serialization/internal/ULongArrayBuilder;->b:I

    .line 14
    .line 15
    const/16 p0, 0xa

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lkotlinx/serialization/internal/ULongArrayBuilder;->b(I)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method public final m()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [J

    .line 3
    .line 4
    new-instance v0, Lkotlin/ULongArray;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lkotlin/ULongArray;-><init>([J)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final n(Lkotlinx/serialization/encoding/CompositeEncoder;Ljava/lang/Object;I)V
    .locals 4

    .line 1
    check-cast p2, Lkotlin/ULongArray;

    .line 2
    .line 3
    iget-object p2, p2, Lkotlin/ULongArray;->j:[J

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-ge v0, p3, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->b:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    .line 12
    .line 13
    move-object v2, p1

    .line 14
    check-cast v2, Lkotlinx/serialization/encoding/AbstractEncoder;

    .line 15
    .line 16
    invoke-virtual {v2, v1, v0}, Lkotlinx/serialization/encoding/AbstractEncoder;->q(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)Lkotlinx/serialization/encoding/Encoder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    aget-wide v2, p2, v0

    .line 21
    .line 22
    invoke-interface {v1, v2, v3}, Lkotlinx/serialization/encoding/Encoder;->n(J)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method
