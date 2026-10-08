.class public final Lkotlinx/serialization/internal/LongArraySerializer;
.super Lkotlinx/serialization/internal/PrimitiveArraySerializer;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/serialization/internal/PrimitiveArraySerializer<",
        "Ljava/lang/Long;",
        "[J",
        "Lkotlinx/serialization/internal/LongArrayBuilder;",
        ">;",
        "Lkotlinx/serialization/KSerializer<",
        "[J>;"
    }
.end annotation


# static fields
.field public static final c:Lkotlinx/serialization/internal/LongArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/serialization/internal/LongArraySerializer;

    .line 2
    .line 3
    sget-object v1, Lkotlinx/serialization/internal/LongSerializer;->a:Lkotlinx/serialization/internal/LongSerializer;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lkotlinx/serialization/internal/LongArraySerializer;->c:Lkotlinx/serialization/internal/LongArraySerializer;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, [J

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    array-length p0, p1

    .line 7
    return p0
.end method

.method public final i(Lkotlinx/serialization/encoding/CompositeDecoder;ILjava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p3, Lkotlinx/serialization/internal/LongArrayBuilder;

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->b:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    .line 7
    .line 8
    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/CompositeDecoder;->p(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)J

    .line 9
    .line 10
    .line 11
    move-result-wide p0

    .line 12
    invoke-static {p3}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;->c(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p3, Lkotlinx/serialization/internal/LongArrayBuilder;->a:[J

    .line 16
    .line 17
    iget v0, p3, Lkotlinx/serialization/internal/LongArrayBuilder;->b:I

    .line 18
    .line 19
    add-int/lit8 v1, v0, 0x1

    .line 20
    .line 21
    iput v1, p3, Lkotlinx/serialization/internal/LongArrayBuilder;->b:I

    .line 22
    .line 23
    aput-wide p0, p2, v0

    .line 24
    .line 25
    return-void
.end method

.method public final j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [J

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p0, Lkotlinx/serialization/internal/LongArrayBuilder;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lkotlinx/serialization/internal/LongArrayBuilder;->a:[J

    .line 12
    .line 13
    array-length p1, p1

    .line 14
    iput p1, p0, Lkotlinx/serialization/internal/LongArrayBuilder;->b:I

    .line 15
    .line 16
    const/16 p1, 0xa

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/LongArrayBuilder;->b(I)V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public final m()Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [J

    .line 3
    .line 4
    return-object p0
.end method

.method public final n(Lkotlinx/serialization/encoding/CompositeEncoder;Ljava/lang/Object;I)V
    .locals 5

    .line 1
    check-cast p2, [J

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-ge v0, p3, :cond_0

    .line 11
    .line 12
    aget-wide v1, p2, v0

    .line 13
    .line 14
    move-object v3, p1

    .line 15
    check-cast v3, Lkotlinx/serialization/encoding/AbstractEncoder;

    .line 16
    .line 17
    iget-object v4, p0, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->b:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v4, v0}, Lkotlinx/serialization/encoding/AbstractEncoder;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v1, v2}, Lkotlinx/serialization/encoding/AbstractEncoder;->n(J)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method
